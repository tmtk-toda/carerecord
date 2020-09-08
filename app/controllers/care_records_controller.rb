class CareRecordsController < ApplicationController
  before_action :set_care_record, only: [:show, :edit, :update, :destroy]
  def index
    @client_care_records = CareRecord.all
  end
  def new
    @client_care_record = CareRecord.new
  end
  def create
    @client_care_record = CareRecord.new(care_record_params)
    
    if @client_care_record.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to client_care_records_path, notice: "記録作成しました！"
    else
      # 入力フォームを再描画します。
      render :new
    end
  end
  def show
    # @care_record = CareRecord.find(params[:id])
  end
  def edit
    # @care_record = CareRecord.find(params[:id])
  end
  def update
    # @care_record = CareRecord.find(params[:id])
    if @client_care_record.update(care_record_params)
      redirect_to care_records_path, notice: "編集しました"
    else
      render :edit
    end
  end
  def destroy
    @care_record.destroy
    redirect_to care_records_path, notice:"削除しました"
  end
  private
  def care_record_params
    params.require(:care_record).permit(:content)
  end
  def set_care_record
    @client_care_record = CareRecord.find(params[:id])
  end
end
