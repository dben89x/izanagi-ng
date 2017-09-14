import { Component } from '@angular/core';
import { Http } from '@angular/http';

@Component({
	selector: 'app-root',
	templateUrl: './app.component.html',
	styleUrls: ['./app.component.css']
})
export class AppComponent {
	title = 'app';
	drops;

	constructor(private http: Http) {
		http.get('http://localhost:3000/drops.json')
			.subscribe(res => this.drops = res.json());
	}
}
