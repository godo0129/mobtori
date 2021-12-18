class SpreadsheetsController < ApplicationController
  # require "rubygems"
  require "google_drive"
  session = GoogleDrive::Session.from_config("./client_secret_105836604420-tiqo0d87g30cnuesqdk6vtb8usii7urv.apps.googleusercontent.com.json")
  
  def read
    # 処理対象のスプレッドシートを指定
    sheets = session.spreadsheet_by_key("1IRuDY2warAhD-yZJIEY9VeBNX_IMwwmC1vau26Pon8M").worksheet_by_title("シート1")
     
    # C3セルの情報を取得
    # シート側で数値が書き込まれていても文字列が返ってくるので要注意
    # [行番号, 列番号]の指定方法と、「C3」のようにセルを直接指定する方法がある
    p sheets[3, 3]
    p sheets["C3"]
     
    # C3セルの値や数式を取得
    # 配列形式で取得すると「シートに表示されている文字(数値)」が返ってくるが、
    # input_valueでは「数式や値そのもの」が返ってくる
    p sheets.input_value(3, 3)
     
    # 配列形式やinput_valueではシートの値を文字列として取得できるが、
    # numeric_valueでは数値として取得することが可能
    p sheets.numeric_value(2, 3)
  end
end
