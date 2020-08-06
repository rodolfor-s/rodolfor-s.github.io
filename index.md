## Rodolfo R. Soldati

<p class="posts">
	{% for post in site.posts %}
	    <span>{{ post.date | date_to_string }}</span>. — <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
    {{ post.content }}
    {% if page.tags %}
            <small>🏷 tags: <em>{{ post.tags | join: "</em> - <em>" }}</em></small>
    {% endif %}

	{% endfor %}
</p>

<hr style="text-align: right">
&#8718;
