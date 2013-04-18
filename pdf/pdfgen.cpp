#include <cairo.h>
#include <cairo-pdf.h>

int main(void) 
{
  cairo_surface_t *surface;
  cairo_t *cr;

  surface = cairo_pdf_surface_create("pdffile.pdf", 612, 792);
  cr = cairo_create(surface);

  cairo_set_source_rgb(cr, 0, 0, 0);
  cairo_select_font_face (cr, "Sans", CAIRO_FONT_SLANT_NORMAL,
      CAIRO_FONT_WEIGHT_NORMAL);
  cairo_set_font_size (cr, 40.0);

  cairo_move_to(cr, 10.0, 50.0);
  cairo_show_text(cr, "Michael A. Uman");

  cairo_set_line_width(cr, 1.0);
  
  cairo_rectangle( cr, 20.0, 60.0, 430.0, 430.0);
  cairo_stroke(cr);
  
//  cairo_copy_page(cr);
  cairo_show_page(cr);
  cairo_move_to(cr, 10.0, 50.0);
  cairo_show_text(cr, "Page #2");
  cairo_show_page(cr);

  cairo_surface_destroy(surface);
  cairo_destroy(cr);

  return 0;
}
