# Julia compiler options struct (see jl_compileropts_t in src/julia.h)
immutable JLCompilerOpts
    julia_home::Ptr{Cchar}
    julia_bin::Ptr{Cchar}
    build_path::Ptr{Cchar}
    image_file::Ptr{Cchar}
    cpu_target::Ptr{Cchar}
    code_coverage::Int8
    malloc_log::Int8
    check_bounds::Int8
    dumpbitcode::Int8
    int_literals::Cint
    compile_enabled::Int8
    opt_level::Int8
    depwarn::Int8
    can_inline::Int8
end

JLCompilerOpts() = unsafe_load(cglobal(:jl_compileropts, JLCompilerOpts))
