import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto call = new bool[](N + 1);
    call[0] = true;
    foreach (i, a; A) {
        if (call[i + 1])
            continue;

        call[a] = true;
    }

    auto res = iota(1, N + 1).filter!(a => !call[a]).array;
    res.length.writeln;
    writefln("%(%s %)", res);
}
