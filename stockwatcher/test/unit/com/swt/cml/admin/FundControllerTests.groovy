package com.swt.cml.admin



import org.junit.*
import grails.test.mixin.*

@TestFor(FundController)
@Mock(Fund)
class FundControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/fund/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.fundInstanceList.size() == 0
        assert model.fundInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.fundInstance != null
    }

    void testSave() {
        controller.save()

        assert model.fundInstance != null
        assert view == '/fund/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/fund/show/1'
        assert controller.flash.message != null
        assert Fund.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/fund/list'

        populateValidParams(params)
        def fund = new Fund(params)

        assert fund.save() != null

        params.id = fund.id

        def model = controller.show()

        assert model.fundInstance == fund
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/fund/list'

        populateValidParams(params)
        def fund = new Fund(params)

        assert fund.save() != null

        params.id = fund.id

        def model = controller.edit()

        assert model.fundInstance == fund
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/fund/list'

        response.reset()

        populateValidParams(params)
        def fund = new Fund(params)

        assert fund.save() != null

        // test invalid parameters in update
        params.id = fund.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/fund/edit"
        assert model.fundInstance != null

        fund.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/fund/show/$fund.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        fund.clearErrors()

        populateValidParams(params)
        params.id = fund.id
        params.version = -1
        controller.update()

        assert view == "/fund/edit"
        assert model.fundInstance != null
        assert model.fundInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/fund/list'

        response.reset()

        populateValidParams(params)
        def fund = new Fund(params)

        assert fund.save() != null
        assert Fund.count() == 1

        params.id = fund.id

        controller.delete()

        assert Fund.count() == 0
        assert Fund.get(fund.id) == null
        assert response.redirectedUrl == '/fund/list'
    }
}
