import std;

void main() {
    int N;
    readfln("%d", N);

    string R;
    readfln("%s", R);

    int E = 'E'.to!int;
    int S = R.map!(r => max(0, E - r.to!int)).sum;

    string res = format("%.20f", S.to!real / N);
    res.writeln;
}
