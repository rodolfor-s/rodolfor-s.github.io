## Rodolfo R. Soldati

<p class="posts">
	{% for post in site.posts %}
	    <span>{{ post.date | date_to_string }}</span>. — <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
        {{ post.content }}
        <p>
        {% if page.tags %}
            <small>🏷 tags: <em>{{ page.tags | join: "</em> - <em>" }}</em></small>
        {% endif %}
        </p>
	{% endfor %}
</p>

<hr style="position: absolute; right: 0px">
&#8718;
