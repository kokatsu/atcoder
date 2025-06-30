import std;

void main() {
    int N, L, R;
    readf("%d %d %d\n", N, L, R);

    auto A = readln.chomp.split.to!(int[]);

    string res = A.map!(a => clamp(a, L, R).to!string).join(" ");
    res.writeln;
}
