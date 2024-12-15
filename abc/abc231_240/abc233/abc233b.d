import std;

void main() {
    int L, R;
    readf("%d %d\n", L, R);

    auto S = readln.chomp.to!(dchar[]);

    --L;

    dchar[] l = S[0 .. L], r = S[R .. $];
    dchar[] m = S[L .. R];
    m.reverse;

    dchar[] res = l ~ m ~ r;
    res.writeln;
}
