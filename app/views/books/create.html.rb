<table>
  <thead>
    <tr>
      <th>title</th>
      <th>body</th>
      <th colspan="3"></th>
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <td><span class="title"><%= book.title %></span></td>
      <td><span class="body"><%= book.body %></span></td>
      <td><%= book.show %></td>
      <td><%= book.edit %></td>
    </tr>
   
  </tbody>
</table>

<h2>New book</h2>
<form class="new_book" id="new_book" action="/books" accept-cherset="utf-8" method="post">
  <input name="utf8" type="hidden" value="✔">
  <input type="hidden" name="authenticity_token" value="URLの貼り付け？？？？">
</form>