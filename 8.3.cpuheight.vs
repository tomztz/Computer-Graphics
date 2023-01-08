//This code is based on the code from learnopengl.com
#version 330 core
layout (location = 0) in vec3 aPos;

out float Height;
out vec3 Position;
out vec4 ioEyeSpacePosition;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    Height = aPos.y;
    Position = (view * model * vec4(aPos, 1.0)).xyz;
    ioEyeSpacePosition=view*model * vec4(aPos,1.0);
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}