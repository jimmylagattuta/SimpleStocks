document.addEventListener("DOMContentLoaded", function(event) {
	var app = new Vue({
		el: '#app',
		data: {
			message: 'Vue.js Working!',
			newStock: "",
			portfolio: ""
	  	},
	  	mounted: function() {
	  		console.log('Mounted Function Running');
	  	},
	  	methods: {
	  		sendStock: function() {

			var bag_json = JSON.stringify(this.newStock);
				// console.log("this bag in stringified json:")
				// console.log(bag_json);
				var json_to_send = {
					symbol: bag_json
				}

	  			console.log('Working');
	  			console.log(this.newStock);
	  		$.post('http://localhost:3000/api/create.json', json_to_send, function(result) {
	  			console.log('Post Result/portfolio Below');
				this.portfolio = result;
	  			console.log('Look Below');
	  			console.log(this.portfolio);
	  		}.bind(this))
	  		
	  		},
	  		saveStock: function() {

			var bag_json = JSON.stringify(this.newStock);
				// console.log("this bag in stringified json:")
				// console.log(bag_json);
			var json_to_send = {
					symbol: bag_json
				}

	  			console.log('Working');
	  			console.log(this.newStock);
	  		$.post('http://localhost:3000/api/save.json', json_to_send, function(result) {
	  			console.log('Post Result/portfolio Below');
				var bag_json = result;
	  			this.portfolio = bag_json;
	  			console.log('Look Below');
	  			console.log(this.portfolio);
	  		}.bind(this))

	  		},
	  	}
	});
});