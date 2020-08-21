## 📰

<div class="posts">
	{% for post in site.posts %}
	    <span>{{ post.date | date_to_string }}</span>. — <a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>
        {{ post.content }}
        <p>
        {% if post.tags %}
            <small>🏷 tags: <em>{{ post.tags | join: "</em> - <em>" }}</em></small>
        {% endif %}
        </p>
	{% endfor %}
</div>
