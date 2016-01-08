��    u      �  �   l      �	  G  �	  �  )  >    Y  U     �     �     �     �     �     
          .     @     ^  �   b  '         4   *   :   *   e   _   �      �      !     %!     +!     J!  A   d!     �!     �!  
   �!     �!  "   �!     "  �   "  �   �"  X   �#     $  	   %$  �   /$  �   �$  R   g%     �%     �%  �   �%  �   �&  |   !'  �   �'  �   K(  �   �(  W   [)     �)  
   �)  i   �)  _   :*  T   �*     �*     
+     +     9+     T+    j+  c   v,  �   �,     �-  #   �-  Z   �-  Q   .     l.     r.     �.  "   �.  &   �.     �.     /  H   /  
   ^/     i/     �/     �/     �/     �/     �/     �/     �/     �/     �/     0     (0     70  ;   E0  �   �0    D1  �   M2  P   F3     �3     �3  	   �3  K   �3     4  B   	4  -   L4     z4  3   �4     �4  	   �4  .   �4  :   5     A5     V5     \5     d5     q5  �   z5  	   6     $6  	   ,6     66  �  ?6  t  8  k  �<  F  �>  T  AD     �I     �I     �I     �I     �I     �I     J     J     &J     BJ  �   FJ  1   �J  	   *K  '   4K  '   \K  o   �K  !   �K     L  	   -L      7L     XL  Y   nL     �L     �L     �L  '   M  -   *M     XM  �   iM  �   fN  M   NO     �O  
   �O  [  �O  �   Q  _   �Q     �Q     R  �   #R  �   �R  z   kS  �   �S  �   �T  �   ^U  l   �U     aV     |V  r   �V  g   �V  Z   ^W     �W     �W  #   �W  "   
X     -X  �   IX  y   3Y  �   �Y     �Z  *   �Z  v   �Z  S   C[     �[     �[     �[  "   �[  %   �[  !   \     7\  E   @\     �\     �\     �\     �\     �\     �\     ]     ]     *]     <]     D]     T]     h]     z]  A   �]  �   �]  *  �^    �_  n   �`  
   Va     aa     ra  N   �a     �a  J   �a  <   "b     _b  >   gb     �b  	   �b  /   �b  <   �b     1c     @c  
   Ic     Tc     cc  �   oc     d  
   d  
   !d  	   ,d            u   T   ?             P   i      ;               1          e      m              [          '   V   I          +          F      ]   r   o   C       X      S   .   c   ,   d   n   "       M      7       A           Y                   G   !   s   K   :   8   Q   
       f   J   2   g   E   #   &   N   9       (   a   )           B   -                         5       q   6   b   D   3       Z       O   /   L   j   p   U   ^   H       h   %      k   $   `         t   \   *   4       l               =                  >   @       W       R       _      0                 	         <    

        {{#if place.source}}
        A new <span class="place-type">{{   place.place_type_label }} idea </span>from <strong>{{ place.source }}</strong>{{#if place.CounDist}} in District {{ place.CounDist }}{{/if}} named <span class="place-name">{{ place.name }}</span>

        {{^}}
          <strong>
          {{#if target.submitter}}
            <img src="{{ target.submitter.avatar_url }}" class="avatar" /> {{ target.submitter.name }}
          {{^}}
            <!-- TODO: FIXME: don't hardcode image URL -->
            <img src="/static/css/images/user-50.png" class="avatar" /> {{ target.submitter_name }}
          {{/if}}
          </strong>
    
          {{#if is_place }}
            {{ action }} a{{#if place.type_starts_with_vowel }}n{{/if }} <span class="place-type">{{     place.place_type_label }} idea </span>
            {{#if place.CounDist}} in District {{ place.CounDist }}{{/if}}
            {{#if place.name }}
              named <span class="place-name">{{ place.name }}</span>
            {{^}}
              {{#if place.location }}
                at <span class="place-name">{{>location-string place.location }}</span>
              {{/if }}
            {{/if }}
          {{else}}
            {{ action }}
    
            {{#if place.name }}
              <span class="place-name">{{ place.name }}</span>
            {{else}}
              a{{# place.type_starts_with_vowel }}n{{/ place.type_starts_with_vowel }} {{ place.    place_type_label }}
            {{/if }}
            {{#if place.CounDist}} in District {{ place.CounDist }}{{/if}}
          {{/if }}
           

        {{#if source}}
          A {{place_type_label location_type }} idea {{#if CounDist}} in District {{ CounDist }}{{/if}} from <strong>{{ source }}</strong>
        {{^}}
        <strong class="point-submitter">
          {{#if submitter}}
            <img src="{{ submitter.avatar_url }}" class="avatar" /> {{ submitter.name }}
          {{^}}
            <!-- TODO: FIXME: don't hardcode image URL -->
            <img src="/static/css/images/user-50.png" class="avatar" /> {{ submitter_name }}
          {{/if}}
            </strong> suggested this {{place_type_label location_type }} idea {{#if CounDist}} in District {{ CounDist }}{{/if}}. 
        {{/if}}
            <p><small>Near {{>location-string location }}</small></p>

         
        {{#if place.source}}
        A new <span class="place-type">{{   place.place_type_label }} idea </span>from <strong>{{ place.source }}</strong>{{#if place.CounDist}} in District {{ place.CounDist }}{{/if}} named <span class="place-name">{{ place.name }}</span>

        {{^}}
          <strong>
          {{#if target.submitter}}
            <img src="{{ target.submitter.avatar_url }}" class="avatar" /> {{ target.submitter.name }}
          {{^}}
            <!-- TODO: FIXME: don't hardcode image URL -->
            <img src="/static/css/images/user-50.png" class="avatar" /> {{ target.submitter_name }}
          {{/if}}
          </strong>
  
          {{#if is_place }}
            {{ action }} a{{#if place.type_starts_with_vowel }}n{{/if }} <span class="place-type">{{   place.place_type_label }} idea </span>
            {{#if place.CounDist}} in District {{ place.CounDist }}{{/if}}
            {{#if place.name }}
              named <span class="place-name">{{ place.name }}</span>
            {{^}}
              {{#if place.location }}
                at <span class="place-name">{{>location-string place.location }}</span>
              {{/if }}
            {{/if }}
          {{else}}
            {{ action }}
  
            {{#if place.name }}
              <span class="place-name">{{ place.name }}</span>
            {{else}}
              a{{# place.type_starts_with_vowel }}n{{/ place.type_starts_with_vowel }} {{ place.  place_type_label }}
            {{/if }}
            {{#if place.CounDist}} in District {{ place.CounDist }}{{/if}}
          {{/if }}
           
  {{#if shortlisted }}
    <p><strong>Location</strong>: {{ Location }}</p>
    <p><strong>Description</strong>: {{ description }}</p>
    <p><strong>Cost</strong>: {{ Cost }}</p>
    <p>Vote for this project between March 29th and April 6th. <a href="http://pbnyc.org/" title="Participatory Budgeting in New York City | REAL MONEY. REAL PROJECTS. REAL POWER.">Find out how and where</a>.</p>
  {{ else }}
    {{#if year }} <!-- it's a manually-added project from previous years -->
      <p class="description">{{ description }}</p>
    
      {{#if status }}
        <p><strong>Status</strong>: {{ status }} {{#if updated }} (last updated {{ updated }}) {{/if }}</p>
      {{/if }}

      <p><strong>Cost</strong>: {{ cost }}</p>
      {{#if agency}}<p><strong>Agency</strong>: {{ agency }}</p> {{/if}}
    
    {{ else }}
  
      {{#if name }} <p>My project idea is: <span class="idea-title">{{ name }}</span></p> {{/if }}

      {{#if description }} <p>Details: {{ description }}</p> {{/if }}
  
      {{# attachments }}
        <div class="place-item place-attachment-{{ name }}">
          <img src="{{ file }}" class="place-value place-value-{{ name }}" alt="{{ name }}">
        </div>
      {{/ attachments }}

    {{/if }}
  {{/if }}
  
  {{^if survey_config}}
    <a href="/place/{{ id }}" class="view-on-map-btn btn btn-small">View On Map</a>
  {{/if}}
   $10,000 - $14,999 $100,000 - $149,999 $15,000 - $24,999 $150,000 or more $25,000 - $34,999 $35,000 - $49,999 $50,000 - $74,999 $75,000 - $99,999 (Outside of the PB districts) ... <h5>Thanks!</h5> <p>The following questions are <strong>optional</strong> and will help us to assess whether these maps are reaching the full diversity of our community: <strong>Anyone</strong> can post ideas. About Additional Guidelines for the 1st District Additional Guidelines for the 9th District Already submitted an idea? There are many more ways to get involved in participatory budgeting: American Indian/Alaskan Native Approximate location: Asian Attend a Neighborhood Assembly Black or African American Click here</a> for upcoming assembly dates, times, and locations. Comment Connect with Us Contact Us Culture & Community Facilities Culture &amp; Community Facilities Describe your idea Discuss your ideas in person with your friends and neighbors at a 9th District Neighborhood Assembly! <a href="http://www.pblongbeach.org/district9.html">Click here</a> for upcoming assembly dates, times, and locations. Discuss your ideas in person with your friends and neighbors at a 9th District Neighborhood Assembly! Go to http://www.pblongbeach.org/district9.html for upcoming assembly dates, times, and locations. Discuss your ideas in person with your friends and neighbors at a Neighborhood Assembly! District Education Eligible ideas may <strong>only</strong> involve <strong>"capital" projects</strong>: lasting physical infrastructure for public benefit, like park improvements or sidewalk repairs. Eligible ideas may include <strong>both</strong> involve "capital" projects and programs and services, like afterschool programs. Eligible ideas must benefit the public and may only involve one-time expenditures. Enter an address... Environment Find us on <a href="https://www.facebook.com/rexrichardsonlb" target="_blank"> Facebook</a> and follow us on <a href="https://twitter.com/rexrichardson" target="_blank"> Twitter Find us on <a href="https://www.facebook.com/rexrichardsonlb">Facebook</a> and follow us on <a href="https://twitter.com/rexrichardson">Twitter</a>! Find us on Facebook (https://www.facebook.com/rexrichardsonlb) and follow us on Twitter (https://twitter.com/rexrichardson)! For information on the nationwide movement for PB, visit the website of the <a href="http://www.participatorybudgeting.org/" target="_blank">Participatory Budgeting Project For more information on participatory budgeting in Long Beach, visit <a href="http://www.pblongbeach.org" target="_blank">pblongbeach.org</a>. For more information on the participatory budgeting process, go to <a href="http://www.pblongbeach.org">www.pblongbeach.org</a>. For more information on the participatory budgeting process, go to www.pblongbeach.org. Get More Involved Guidelines Have a question? Feel free to <a href="http://www.pblongbeach.org/contact.html" target="blank">contact us Have a question? Feel free to <a href="http://www.pblongbeach.org/contact.html">contact us</a>. Have a question? Feel free to contact us at http://www.pblongbeach.org/contact.html. Here's what you suggested: Hispanic or Latino/a How to get more involved: How would YOU spend $250K? I'd like to volunteer Idea submission for the PB process the <a href="/14/33.77851/-118.20637" rel="internal">1st</a> and <a href="/14/33.87084/-118.17796" rel="internal">9th</a> Districts is now open! If you have an idea for a project to improve your district, please share it on the map! Ideas must be "capital" projects - building, installing, or repairing something for public benefit. In the Spring, community members will review all the ideas we have received, and develop them into full proposals. In May, all district residents will vote on the top projects. Leave a Comment Native Hawaiian or Pacific Islander Note: Council district staff will review idea categories and make any revisions as needed. Only ideas within the boundaries of the 1st and 9th Districts will be considered. Other Parks & Recreation Parks &amp; Recreation Participatory Budgeting Long Beach Participatory Budgeting for Long Beach Pick a category for your idea Please choose... Please note that the input period for this district is over for 2015/16. Powered by Public Health & Safety Public Health &amp; Safety Public Health and Safety Seniors Share my idea Show as a list Show on a map Sign up here Someone Streets & Sidewalks Streets &amp; Sidewalks Submit an idea Support This! Thanks for submitting a new idea to improve your community! There are lots of ways to get involved in PB Long Beach! You can help to get the word out to underserved communities, facilitate small group meetings, help translate materials, or design flyers. There are lots of ways to get involved in PB Long Beach! You can help to get the word out to underserved communities, facilitate small group meetings, help translate materials, or design flyers. <a href="http://www.pblongbeach.org/volunteer.html">Sign up here</a>. There are lots of ways to get involved in PB Long Beach! You can help to get the word out to underserved communities, facilitate small group meetings, help translate materials, or design flyers. Sign up at http://www.pblongbeach.org/volunteer.html. To add an idea, drag the map until the crosshairs are over the desired location. Transit Under $10,000 Volunteer What is your idea for what should be built or repaired in our neighborhood? White Why is this important? What need in the community does this serve? You can see people's comments on your idea at Your Age Your Email (required, will NOT be shown on the map) Your Household Income Your Name Your Name (required, will be shown on the map) Your Phone Number (optional, will NOT be shown on the map) Your Race/Ethnicity: Youth comment commented on comments is an innovative democratic process that gives Long Beach residents of the 9th and 1st districts the power to decide how to spend city funds in their district. suggested support supported supports Project-Id-Version: Shareabouts PB Long Beach 2015/16
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-11-08 23:21-0600
PO-Revision-Date: 2016-01-04 23:47+0000
Last-Translator: Aseem Mulji <aseem@participatorybudgeting.org>
Language-Team: Spanish (http://www.transifex.com/mjumbewu/shareabouts-pb-long-beach-201516/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: es
Plural-Forms: nplurals=2; plural=(n != 1);
 

{{#if place.source}}
Una nueva idea de <span class="place-type">{{ place.place_type_label }} </span>de <strong>"{{ place.source }}"</strong>{{#if place.CounDist}} en Distrito {{ place.CounDist }}{{/if}} para <span class="place-name">"{{ place.name }}"</span>

{{^}}
<strong>
{{#if target.submitter}}
<img src="{{ target.submitter.avatar_url }}" class="avatar" /> {{ target.submitter.name }}
{{^}}
<!-- TODO: FIXME: don't hardcode image URL -->
<img src="/static/css/images/user-50.png" class="avatar" /> {{ target.submitter_name }}
{{/if}}
</strong>

{{#if is_place }}
{{ action }} una idea de <span class="place-type">{{ place.place_type_label }} </span>
{{#if place.CounDist}} en Distrito {{ place.CounDist }}{{/if}}
{{#if place.name }}
para <span class="place-name">"{{ place.name }}"</span>
{{^}}
{{#if place.location }}
cerca de <span class="place-name">{{>location-string place.location }}</span>
{{/if }}
{{/if }}
{{else}}
{{ action }}

{{#if place.name }}
<span class="place-name">"{{ place.name }}"</span>
{{else}}
una {{ place. place_type_label }}
{{/if }}
{{#if place.CounDist}} en Distrito {{ place.CounDist }}{{/if}}
{{/if }} 

{{#if source}}
Una idea de {{place_type_label location_type }} {{#if CounDist}} en Distrito {{ CounDist }}{{/if}} de <strong>"{{ source }}"</strong>
{{^}}
<strong class="point-submitter">
{{#if submitter}}
<img src="{{ submitter.avatar_url }}" class="avatar" /> {{ submitter.name }}
{{^}}
<!-- TODO: FIXME: don't hardcode image URL -->
<img src="/static/css/images/user-50.png" class="avatar" /> {{ submitter_name }}
{{/if}}
</strong> sugerió esta idea para {{place_type_label location_type }} {{#if CounDist}} en Distrito {{ CounDist }}{{/if}}. 
{{/if}}
<p><small>Cerca de {{>location-string location }}</small></p> 
{{#if place.source}}
Una nueva idea de <span class="place-type">{{ place.place_type_label }} </span>de <strong>"{{ place.source }}"</strong>{{#if place.CounDist}} en Distrito {{ place.CounDist }}{{/if}} para <span class="place-name">"{{ place.name }}"</span>


{{^}}
<strong>

      {{#if target.submitter}}
        <img src="{{ target.submitter.avatar_url }}" class="avatar" /> {{ target.submitter.name }}
      {{^}}
        <!-- TODO: FIXME: don't hardcode image URL -->
        <img src="/static/css/images/user-50.png" class="avatar" /> {{ target.submitter_name }}
      {{/if}}
      </strong>

      {{#if is_place }}
        {{ action }} una <span class="place-type"> idea de {{ place.place_type_label }}</span>
        {{#if place.CounDist}} en distrito {{ place.CounDist }}{{/if}}
        {{#if place.name }}
          <span class="place-name">"{{ place.name }}"</span>
        {{^}}
          {{#if place.location }}
            en <span class="place-name">{{>location-string place.location }}</span>
          {{/if }}
        {{/if }}
      {{else}}
        {{ action }}

        {{#if place.name }}
          <span class="place-name">{{ place.name }}</span>
        {{else}}
          una idea de {{ place.place_type_label }}
        {{/if }}
        {{#if place.CounDist}} en distrito {{ place.CounDist }}{{/if}}
      {{/if }}
       
  {{#if shortlisted }}
    <p><strong>Ubicación</strong>: {{ Location }}</p>
    <p><strong>Idea</strong>: {{ description }}</p>
    <p><strong>Costo</strong>: {{ Cost }}</p>
    <p>Vote for this project between March 29th and April 6th. <a href="http://pbnyc.org/" title="Participatory Budgeting in New York City | REAL MONEY. REAL PROJECTS. REAL POWER.">Find out how and where</a>.</p>
  {{ else }}
    {{#if year }} <!-- it's a manually-added project from previous years -->
      <p class="description">{{ description }}</p>
    
      {{#if status }}
        <p><strong>Estatus</strong>: {{ status }} {{#if updated }} (last updated {{ updated }}) {{/if }}</p>
      {{/if }}

      <p><strong>Costo</strong>: {{ cost }}</p>
      {{#if agency}}<p><strong>Agencia</strong>: {{ agency }}</p> {{/if}}
    
    {{ else }}
  
      {{#if name }} <p>Mi idea es: <span class="idea-title">{{ name }}</span></p> {{/if }}

      {{#if description }} <p>Detalles: {{ description }}</p> {{/if }}
  
      {{# attachments }}
        <div class="place-item place-attachment-{{ name }}">
          <img src="{{ file }}" class="place-value place-value-{{ name }}" alt="{{ name }}">
        </div>
      {{/ attachments }}

    {{/if }}
  {{/if }}
  
  {{^if survey_config}}
    <a href="/place/{{ id }}" class="view-on-map-btn btn btn-small">Ver en el mapa</a>
  {{/if}}
   $10,000 - $14,999 $100,000 - $149,999 $15,000 - $24,999 $150,000 o más $25,000 - $34,999 $35,000 - $49,999 $50,000 - $74,999 $75,000 - $99,999 (Fuera de los distritos PP) ... <h5>¡Gracias!</h5> <p>Las preguntas a continuación son <strong>opcionales</strong> y nos ayudarán a determinar si estos mapas recogen toda la diversidad de nuestra comunidad: <strong>Todos</strong> pueden publicar sus ideas. Acerca de Directrices adicionales para Distrito 1 Directrices adicionales para Distrito 9 ¿Ya enviaste tu idea? Hay muchas otras formas de ser partícipe del proceso de presupuestación participativa: Nativo americano/Nativo de Alaska Ubicación aproximada: Asiático Asiste a una asamblea de vecinos Negro o afroamericano Haz clic aquí</a> para ver las fechas, horarios y ubicación de las próximas asambleas. Comentar Conéctate con nosotros Comunícate con nosotros Instalaciones culturales y comunitarias Cultura &amp; Instalaciones para la Comunidad Describe tu idea ¡Ven a compartir tus ideas en persona con tus amigos y vecinos a la Asamblea de Barrio del Distrito 9! <a href="http://www.pblongbeach.org/district9.html">Haz clic aquí</a> para enterarte de las fechas, horarios, y sitios de las próximas asambleas.  ¡Ven a compartir tus ideas en persona con tus amigos y vecinos a la Asamblea de Barrio del Distrito 9! Consulta http://www.pblongbeach.org/district9.html para enterarte de las fechas, horarios, y sitios de las próximas asambleas. Discuta sus ideas en persona con sus amigos y vecinos en una Asamblea Barrio! Distrito Educación Ideas que califican deben ser para <strong> proyectos de "capital"</strong> que benefician al público: infraestructura física a largo plazo para el beneficio público, cómo mejoras en parques o ventanas nuevas para aulas de escuelas. Programas y servicios, como programas extraescolares o la extensión del servicio de autobuses, no califican.  Ideas elegibles pueden incluir tanto implican proyectos de " capital" y los programas y servicios, como los programas después de la escuela . Ideas elegibles deben beneficiar al público y sólo pueden incluir los gastos de una sola vez. Escribe una dirección... Medioambiente Encuéntranos en <a href="https://www.facebook.com/rexrichardsonlb" target="_blank"> Facebook</a> y síguenos en <a href="https://twitter.com/rexrichardson" target="_blank"> Twitter ¡Buscanos en  <a href="https://www.facebook.com/rexrichardsonlb">Facebook y siguenos en <a href="https://twitter.com/rexrichardson">Twitter</a>! Buscanos en Facebook (https://www.facebook.com/rexrichardsonlb) y siguenos en Twitter (https://twitter.com/rexrichardson)! Para obtener información sobre el movimiento national para el Presupuesto Participativo, consulta la página web del <a href="http://www.participatorybudgeting.org/" target="_blank">Proyecto del Presupuesto Participativo. Para más información sobre presupuestos participativos en Long Beach, visita <a href="http://www.pblongbeach.org" target="_blank">pblongbeach.org</a>. Para obtener más información sobre el proceso del presupuesto participativo, consulta <a href="http://www.pblongbeach.org">www.pblongbeach.org</a>. Para obtener más información sobre el proceso del presupuesto participativo, consulta www.pblongbeach.org. Otras formas de participar Normas ¿Tienes una pregunta? No dudes en <a href="http://www.pblongbeach.org/contact.html" target="blank">contactarnos . ¿Tienes una pregunta? No dudes en  <a href="http://www.pblongbeach.org/contact.html">contactarnos</a>. ¿Tienes una pregunta? No dude en contactarnos en http://www.pblongbeach.org/contact.html. Aquí es lo que sugeriste:  Hispano o latino Cómo participar más activamente:  ¿Cómo utilizarías TÚ $250,000? Me gustaría ser voluntario ¡Ahora puedes presentar ideas para el proceso de Presupuesto Participativo en el  <a href="/14/33.77851/-118.20637" rel="internal">Distrito 1</a>! Si tienes una idea para mejorar el Distrito 1, ¡por favor compártela sobre el mapa! Las ideas deben ser proyectos de "capital": edificación, instalación o reparación de algo para beneficio del público. Durante la primavera, miembros de la comunidad revisarán todas las ideas que hemos recibido, y las transformarán en propuestas completas. En mayo, todos los residentes del distrito votarán sobre sus proyectos favoritos.  Dejar un comentario Nativo de Hawái o las islas del Pacífico Nota: El personal del distrito del Concejo examinará las categorías de ideas y realizará las revisiones necesarias. Sólo se considerarán las ideas dentro de los límites de distrito 1 y distrito 9. Otro Parques y recreación Parques &amp; Recreación Participatory Budgeting Long Beach Participatory Budgeting en Long Beach Elige una categoría para tu idea Elige... El período de entrada para este distrito se ha acabado para 2015/16. Potenciado por Salud y seguridad pública Salud Pública &amp; Seguridad Salud y seguridad pública Personas mayores Compartir mi idea Ver como lista Ver como mapa Regístrate aquí Alguien Calles y aceras Calles &amp; Aceras Proponer una idea ¡Vota a favor! ¡Gracias por compartir una nueva idea para mejorar tu comunidad! ¡Hay muchas formas de participar en PB Long Beach! Puedes ayudar a correr la voz en comunidades marginadas, facilitar reuniones en pequeños grupos, ayudar a traducir materiales y diseñar volantes ("flyers"). Hay muchas maneras para participar en el Presupesto Participativo en Long Beach! Puedes ayudar a pasar la voz a comunidades marginadas, a facilitar reuniones de grupos pequeños, a traducir materiales, o a diseñar panfletos. <a href="http://www.pblongbeach.org/volunteer.html">Apúntate aquí</a>. Hay muchas maneras para participar en el Presupesto Participativo en Long Beach! Puedes ayudar a pasar la voz a comunidades marginadas, a facilitar reuniones de grupos pequeños, a traducir materiales, o a diseñar panfletos. Apúntate aquí http://www.pblongbeach.org/volunteer.html. Para añadir una idea, arrastra el mapa hasta que los hilos del retículo esten sobre la ubicación deseada.   Transporte Menos de $10,000 Ser voluntario ¿Cuál es tu idea de lo que debería ser construido o reparado en tu barrio?  Blanco ¿Por qué esto es importante? ¿Qué necesidad satisface en la comunidad? Puedes ver los comentarios de otra gente sobre tu idea aquí Tu edad Tu correo electrónico (obligatorio, NO aparecerá en el mapa) Tu ingreso familiar Tu nombre  Tu nombre (obligatorio, aparecerá en el mapa) Tu número de teléfono (opcional, NO aparecerá en el mapa) Su raza/etnia: Jóvenes comentario comentó sobre comentarios es un proceso inovador que da a los residentes de Long Beach en los Distritos 1 y  9 el poder de decidir cómo gastar los fondos municipales en su distrito.  sugerió patrocinio patrocinó patrocina 