class CareRecordsController < ApplicationController
  def index
    @care_records = CareRecord.all
  end
  def new
    @care_record = CareRecord.new
  end
  def create
    CareRecord.create(params.require(:care_record).permit(:content))
    redirect_to new_care_record_path
  end
  private
  def care_record_params
    params.require(:care_record).permit(:content)
  end
end
