/** Créer un élément HTML qui prenne 3 attributs optionnels :
- city => représente la ville qu'on veut voir (si non fourni, Paris par défaut)
- units => représente l'unité qu'on veut utiliser (metric pour les Celsius ou fahrenheit, metric par défaut)
- lang => représente la langue que l'on veut utiliser pour l'appel à l'API (fr par défaut)

L'élément doit appeler l'API OpenWeatherMap et afficher 
- l'icone du temps qu'il fait, 
- la température dans l'unité choisie et 
- la description du temps entre parenthèses.

Exemple d'appel HTTP : http://api.openweathermap.org/data/2.5/weather?q=Paris&units=metric&lang=fr&appid=8e602b9ea28ed4f9f8fc97a5f6d1105c
*/

class MeteoWidgetElement extends HTMLElement {

    constructor(){
        super();
        
        this.attachShadow({mode: 'open'});

        this.shadowRoot.innerHTML = `
            <style>
                .meteo-widget {
                    display: flex;
                    justify-content: flex-start;
                    align-items: center;
                }

                img {
                    margin-right: 20px;
                }
                
                .meteo-widget.dark {
                    background-color: black;
                    color: white;
                }
            </style>
            <div class="meteo-widget">
                <img src="">
                <div class="infos">
                    <h2>Paris</h2>
                    <h3><span id="temperature">25 C°</span> (<span id="description">Nuageux</span>)</h3>
                </div>
            </div>
        `
    }

    capitalize(str){
        return str.split(' ').map(mot => mot[0].toUpperCase() + mot.slice(1)).join(' ');
    }

    fetchAPIData(){
        fetch(`http://api.openweathermap.org/data/2.5/weather?q=${this._city}&units=${this._units}&lang=${this._lang}&appid=8e602b9ea28ed4f9f8fc97a5f6d1105c`)
            .then(response => response.json())
            .then(json => {
                this._temperature = json.main.temp;
                this._description = json.weather[0].description;
                this._icon = json.weather[0].icon;

                this.render();
            })
    }

    connectedCallback(){
        this._city = this.getAttribute('city') || 'Paris';
        this._units = this.getAttribute('units') || 'metric';
        this._lang = this.getAttribute('lang') || 'fr';

        this._dark = this.getAttribute('dark') !== null;

        this.fetchAPIData();
    }
    
    render(){
        if(this._dark){
            this.shadowRoot.querySelector('div.meteo-widget').classList.add('dark');
        }

        this.shadowRoot.querySelector('img').src = `http://openweathermap.org/img/w/${this._icon}.png`;

        this.shadowRoot.querySelector('h2').textContent = this._city;

        this.shadowRoot.querySelector('h3 #temperature').textContent = this._temperature + (this._units == 'metric' ? ' C°' : ' F°');
        
        this.shadowRoot.querySelector('h3 #description').textContent = this.capitalize(this._description);
    }
}

window.customElements.define('meteo-widget', MeteoWidgetElement);