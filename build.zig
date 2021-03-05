const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    var tests = b.addTest("uuid.zig");
    tests.setBuildMode(b.standardReleaseOptions());

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&tests.step);
    b.default_step.dependOn(test_step);
}
