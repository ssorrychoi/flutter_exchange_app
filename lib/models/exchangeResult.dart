class ExchangeResult {
  int result;
  String curUnit;
  String ttb;
  String tts;
  String dealBasR;
  String bkpr;
  String yyEfeeR;
  String tenDdEfeeR;
  String kftcBkpr;
  String kftcDealBasR;
  String curNm;

  ExchangeResult(
      {this.result,
        this.curUnit,
        this.ttb,
        this.tts,
        this.dealBasR,
        this.bkpr,
        this.yyEfeeR,
        this.tenDdEfeeR,
        this.kftcBkpr,
        this.kftcDealBasR,
        this.curNm});

  ExchangeResult.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    curUnit = json['cur_unit'];
    ttb = json['ttb'];
    tts = json['tts'];
    dealBasR = json['deal_bas_r'];
    bkpr = json['bkpr'];
    yyEfeeR = json['yy_efee_r'];
    tenDdEfeeR = json['ten_dd_efee_r'];
    kftcBkpr = json['kftc_bkpr'];
    kftcDealBasR = json['kftc_deal_bas_r'];
    curNm = json['cur_nm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['cur_unit'] = this.curUnit;
    data['ttb'] = this.ttb;
    data['tts'] = this.tts;
    data['deal_bas_r'] = this.dealBasR;
    data['bkpr'] = this.bkpr;
    data['yy_efee_r'] = this.yyEfeeR;
    data['ten_dd_efee_r'] = this.tenDdEfeeR;
    data['kftc_bkpr'] = this.kftcBkpr;
    data['kftc_deal_bas_r'] = this.kftcDealBasR;
    data['cur_nm'] = this.curNm;
    return data;
  }
}
