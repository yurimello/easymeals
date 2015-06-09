class ListDataTable
  constructor: (resource, columns) ->
    @resource = resource
    @columns = columns
  renderColumns: () ->
    cols = []
    count = 0
    for column in @columns
      hash = {}
      hash['data'] = column
      if count == 0
        hash['render'] = (data, type, full) ->
          "<a class='label bg-primary' href='/admin/receipes/#{data}'> visualize #{data}</a>"
      cols.push(hash) 
      count = count + 1
    cols

  load: () ->
    $('#dt').dataTable({ 
        serverSide: true,
        processing: true,
        searching: false,
        ajax: "/admin/receipes.json",
        columns: this.renderColumns();
        # [
        #   {
        #     data: 'id',
        #     render: (data, type, full) ->
        #       "<a class='label bg-primary' href='/admin/occasions/#{data}'> visualize #{data}</a>"
        #   },
        #   {data: 'title'}
        # ],
        lengthMenu: [[10, 25, 50], [10, 25, 50]]
    })

window["ListDataTable"] = ListDataTable