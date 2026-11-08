public static void main(String[] args)
{
	ApiKey k=new ApiKey("YOUR API_KEY","YOUR SECRET KEY");
	ExchangeApi lp=new ExchangeApi(k);
	//ビットコインの買い板に30000円で0.01BTCの買いを出す。
	TradeResult r=lp.trade(CurrencyPair.BTCJPY,TradeType.BID,30000,0.01);
	System.out.println(r.success?String.format("orderid=%d",r.order_id):"method failed");
	return;
}
