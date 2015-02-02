class StockController <  ApplicationController

    def home
    end
    
    def lookup
    end

    def result
        if params[:symbol]
            @symbol = params[:symbol].upcase
            @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
        end
    end
end