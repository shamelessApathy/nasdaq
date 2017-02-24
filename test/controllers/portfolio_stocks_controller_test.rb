require 'test_helper'

class PortfolioStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio_stock = portfolio_stocks(:one)
  end

  test "should get index" do
    get portfolio_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_stock_url
    assert_response :success
  end

  test "should create portfolio_stock" do
    assert_difference('PortfolioStock.count') do
      post portfolio_stocks_url, params: { portfolio_stock: {  } }
    end

    assert_redirected_to portfolio_stock_url(PortfolioStock.last)
  end

  test "should show portfolio_stock" do
    get portfolio_stock_url(@portfolio_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_stock_url(@portfolio_stock)
    assert_response :success
  end

  test "should update portfolio_stock" do
    patch portfolio_stock_url(@portfolio_stock), params: { portfolio_stock: {  } }
    assert_redirected_to portfolio_stock_url(@portfolio_stock)
  end

  test "should destroy portfolio_stock" do
    assert_difference('PortfolioStock.count', -1) do
      delete portfolio_stock_url(@portfolio_stock)
    end

    assert_redirected_to portfolio_stocks_url
  end
end
