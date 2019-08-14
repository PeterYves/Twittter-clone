require "application_system_test_case"

class TClonesTest < ApplicationSystemTestCase
  setup do
    @t_clone = t_clones(:one)
  end

  test "visiting the index" do
    visit t_clones_url
    assert_selector "h1", text: "T Clones"
  end

  test "creating a T clone" do
    visit t_clones_url
    click_on "New T Clone"

    fill_in "Content", with: @t_clone.content
    click_on "Create T clone"

    assert_text "T clone was successfully created"
    click_on "Back"
  end

  test "updating a T clone" do
    visit t_clones_url
    click_on "Edit", match: :first

    fill_in "Content", with: @t_clone.content
    click_on "Update T clone"

    assert_text "T clone was successfully updated"
    click_on "Back"
  end

  test "destroying a T clone" do
    visit t_clones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "T clone was successfully destroyed"
  end
end
