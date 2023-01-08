//This code is based on the code from learnopengl.com
#version 330 core
layout (location = 0) in vec3 aPos;

out vec3 TexCoords;
out vec4 ioEyeSpacePosition;
uniform mat4 projection;
uniform mat4 view;

void main()
{
    TexCoords = aPos;
    vec4 pos = projection * view * vec4(aPos, 1.0);
    ioEyeSpacePosition=view*vec4(1.0f,1.0f,1.0f,1.0f) * vec4(aPos,1.0);
    gl_Position = pos.xyww;
}  