pub const c = @cImport({
    // Must be uncommented for vulkan.zig to work
    // @cDefine("GLFW_INCLUDE_VULKAN", "1");
    @cDefine("GLFW_INCLUDE_NONE", "1");
    @cInclude("GLFW/glfw3.h");
});
