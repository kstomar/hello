class PdfGeneratorsController < ApplicationController
  def show
    @advices = Advice.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = WickedPdf.new.pdf_from_string(
                        render_to_string(
                          template: 'pdf_generators/show.pdf.erb'))

        send_data(pdf, :filename => "mashpy", :type=>"application/pdf")
      end
    end
  end

  def index
  end
end
