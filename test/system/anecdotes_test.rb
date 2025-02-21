require "application_system_test_case"

class AnecdotesTest < ApplicationSystemTestCase
  setup do
    @anecdote = anecdotes(:one)
  end

  test "visiting the index" do
    visit anecdotes_url
    assert_selector "h1", text: "Anecdotes"
  end

  test "should create anecdote" do
    visit anecdotes_url
    click_on "New anecdote"

    fill_in "Content", with: @anecdote.content
    fill_in "Title", with: @anecdote.title
    fill_in "User", with: @anecdote.user_id
    click_on "Create Anecdote"

    assert_text "Anecdote was successfully created"
    click_on "Back"
  end

  test "should update Anecdote" do
    visit anecdote_url(@anecdote)
    click_on "Edit this anecdote", match: :first

    fill_in "Content", with: @anecdote.content
    fill_in "Title", with: @anecdote.title
    fill_in "User", with: @anecdote.user_id
    click_on "Update Anecdote"

    assert_text "Anecdote was successfully updated"
    click_on "Back"
  end

  test "should destroy Anecdote" do
    visit anecdote_url(@anecdote)
    click_on "Destroy this anecdote", match: :first

    assert_text "Anecdote was successfully destroyed"
  end
end
