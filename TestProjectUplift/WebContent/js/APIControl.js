function getData(){
	fetch('https://jsonplaceholder.typicode.com/posts')
	  .then(function(response){
		  return response.json();
	  })
	  .then(function(data){
		  
		  try {
			 let html = '';
			 for (let item of data){
				let htmlrow = `<tr id="tr_${item.id}"><td>${item.title}</td><td>${item.body}</td>`;
				htmlrow += `<td><button class="btn btn-danger" onclick="deleteData('${item.id}')">Borrar</button></td></tr>`;
				html += htmlrow;
			}
			 
			const rowData = document.querySelector('.outputData');
			rowData.innerHTML = html;
		} catch (e) {
			// TODO: handle exception
		}
	  });
}

function setData(){
	
}

function deleteData(idx){
	fetch('https://jsonplaceholder.typicode.com/posts/' + idx, {
		method: 'DELETE',
	});
	
	$('#tr_' + idx).remove();
}