//
//	Adapted from the cairomm example code
//

#include <string>
#include <iostream>
#include <cairommconfig.h>
#include <cairomm/context.h>
#include <cairomm/surface.h>

/* M_PI is defined in math.h in the case of Microsoft Visual C++, Solaris,
 * et. al.
 */
#if defined(_MSC_VER)
#define _USE_MATH_DEFINES
#endif

#include <cmath>

void draw(Cairo::RefPtr<Cairo::Context> cr, int width, int height) {
    cr->save(); // save the state of the context
    cr->set_source_rgb(0.86, 0.85, 0.47);
    cr->paint();    // fill image with the color
    cr->restore();  // color is back to black now

    cr->save();
    // draw a border around the image
    cr->set_line_width(4.0);    		// make the line wider
    cr->set_source_rgb(1.0, 1.0, 1.0); 	// white
	cr->rectangle(0.0, 0.0, (double)width, (double)height);
    cr->stroke();

    cr->set_source_rgba(0.0, 0.0, 0.0, 0.7);
    cr->set_line_width(20.0);    // make the line wider
    // draw a circle in the center of the image
    cr->arc(width / 2.0, height / 2.0,
            height / 4.0, 0.0, 2.0 * M_PI);
    cr->stroke();

    // draw a diagonal line
    cr->move_to(width / 4.0, height / 4.0);
    cr->line_to(width * 3.0 / 4.0, height * 3.0 / 4.0);
    cr->stroke();
    cr->restore();
}

#ifdef CAIRO_HAS_PDF_SURFACE
void generate_pdf(std::string filename, int width, int height) {
    Cairo::RefPtr<Cairo::PdfSurface> surface =
        Cairo::PdfSurface::create(filename, width, height);

    Cairo::RefPtr<Cairo::Context> cr = Cairo::Context::create(surface);

    draw(cr, width, height);

    cr->show_page();

    std::cout << "Wrote PDF file \"" << filename << "\"" << std::endl;

    return;
}
#endif

#ifdef CAIRO_HAS_SVG_SURFACE
void generate_svg(std::string filename, int width, int height) {
    Cairo::RefPtr<Cairo::SvgSurface> surface =
        Cairo::SvgSurface::create(filename, width, height);

    Cairo::RefPtr<Cairo::Context> cr = Cairo::Context::create(surface);

    draw(cr, width, height);

    cr->show_page();

    std::cout << "Wrote SVG file \"" << filename << "\"" << std::endl;

    return;
}
#endif

int main() {
    std::string filename = "image";
    int width = 600;
    int height = 400;

#ifdef CAIRO_HAS_PDF_SURFACE
    generate_pdf(filename + ".pdf", width, height);
#endif

#ifdef CAIRO_HAS_SVG_SURFACE
    generate_svg(filename + ".svg", width, height);
#endif

    return 0;
}
