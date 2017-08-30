require 'rubygems'
require 'sinatra'
require 'slim'
require 'money'
require 'monetize'
require 'money/bank/google_currency'



def load_currencies(hash)
  hash
end


def all_currencies(hash)
  hash.values
end

get '/' do
	@money=Money::Currency.all
  slim :index
end



post '/cambio' do
	@cantidad = params[:cantidad]
  @moneda1 = params[:moneda1]
  @moneda2 = params[:moneda2]
	redirect "/cambio/#{@cantidad}/#{@moneda1}/#{@moneda2}"
end

get "/cambio/:c/:m1/:m2" do
	Money.default_bank = Money::Bank::Base.new
	Money.default_bank = Money::Bank::VariableExchange.new(Money::Bank::GoogleCurrency.new)
	Money.use_i18n = false
	I18n.enforce_available_locales = false
	money = params[:c].to_money(params[:m1])
	@a = money.exchange_to(params[:m2])
	@b= params[:m2]
	@currency = Money.new(@a,@b)
	slim :cambio
end

