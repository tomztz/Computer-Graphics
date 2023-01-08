#version 330 core
layout (location = 0) in vec3 aPos;

//This code is based on the code from learnopengl.com
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
out vec4 ioEyeSpacePosition;

void main()
{
    ioEyeSpacePosition=view*model * vec4(aPos,1.0);
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}


