require 'test_helper'

class MailRecipientsControllerTest < ActionController::TestCase
  setup do
    @mail_recipient = mail_recipients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_recipients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_recipient" do
    assert_difference('MailRecipient.count') do
      post :create, mail_recipient: { email: @mail_recipient.email, name: @mail_recipient.name }
    end

    assert_redirected_to mail_recipient_path(assigns(:mail_recipient))
  end

  test "should show mail_recipient" do
    get :show, id: @mail_recipient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_recipient
    assert_response :success
  end

  test "should update mail_recipient" do
    patch :update, id: @mail_recipient, mail_recipient: { email: @mail_recipient.email, name: @mail_recipient.name }
    assert_redirected_to mail_recipient_path(assigns(:mail_recipient))
  end

  test "should destroy mail_recipient" do
    assert_difference('MailRecipient.count', -1) do
      delete :destroy, id: @mail_recipient
    end

    assert_redirected_to mail_recipients_path
  end
end
