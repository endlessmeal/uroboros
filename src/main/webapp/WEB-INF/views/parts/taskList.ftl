<table class="table table-hover mt-3">
    <thead class="bg-secondary">
    <tr>
        <th scope="col">Description</th>
        <th scope="col">Content</th>
        <th scope="col">Action</th>
        <th scope="col" class="col-1"></th>
    </tr>
    </thead>
    <tbody>
    <#list tasks as task>
        <tr>
            <td>${task.description}</td>
            <td>${task.content}</td>
            <td><a class="btn btn-primary btn-sm" href="/tasks/edit/${task.id}">Edit</a></td>
            <td>
                <form method="post" action="/deleteTask/${task.id}">
                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </td>
        </tr>
    <#else>
        <tr>
            <td>No records</td>
        </tr>
    </#list>
    </tbody>
</table>