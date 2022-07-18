#shader vertex
#version 330 core

layout(location = 0) in vec4 position;

void main()
{
	gl_Position = position;
};


#shader fragment
#version 330 core

layout(location = 0) out vec4 color;
uniform vec3 position;

void main()
{
	vec2 col = (noise2(position.xy) * 0.5) + 0.5;
	float val = (col.x + col.y) / 2.0;
	color = vec4(1.0, val, val, 1.0);
};