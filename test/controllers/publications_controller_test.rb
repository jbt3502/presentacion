require 'test_helper'

class PublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get publications_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_url
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post publications_url, params: { publication: { descripcion: @publication.descripcion, fecha_fin: @publication.fecha_fin, fecha_inicio: @publication.fecha_inicio, field_id: @publication.field_id, nombre: @publication.nombre, tarifa: @publication.tarifa } }
    end

    assert_redirected_to publication_url(Publication.last)
  end

  test "should show publication" do
    get publication_url(@publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_url(@publication)
    assert_response :success
  end

  test "should update publication" do
    patch publication_url(@publication), params: { publication: { descripcion: @publication.descripcion, fecha_fin: @publication.fecha_fin, fecha_inicio: @publication.fecha_inicio, field_id: @publication.field_id, nombre: @publication.nombre, tarifa: @publication.tarifa } }
    assert_redirected_to publication_url(@publication)
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete publication_url(@publication)
    end

    assert_redirected_to publications_url
  end
end
