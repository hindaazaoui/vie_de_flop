require "test_helper"

class AnecdotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anecdote = anecdotes(:one)
  end

  test "should get index" do
    get anecdotes_url
    assert_response :success
  end

  test "should get new" do
    get new_anecdote_url
    assert_response :success
  end

  test "should create anecdote" do
    assert_difference("Anecdote.count") do
      post anecdotes_url, params: { anecdote: { content: @anecdote.content, title: @anecdote.title, user_id: @anecdote.user_id } }
    end

    assert_redirected_to anecdote_url(Anecdote.last)
  end

  test "should show anecdote" do
    get anecdote_url(@anecdote)
    assert_response :success
  end

  test "should get edit" do
    get edit_anecdote_url(@anecdote)
    assert_response :success
  end

  test "should update anecdote" do
    patch anecdote_url(@anecdote), params: { anecdote: { content: @anecdote.content, title: @anecdote.title, user_id: @anecdote.user_id } }
    assert_redirected_to anecdote_url(@anecdote)
  end

  test "should destroy anecdote" do
    assert_difference("Anecdote.count", -1) do
      delete anecdote_url(@anecdote)
    end

    assert_redirected_to anecdotes_url
  end
end
