import std;

void main() {
    int N;
    readf("%d\n", N);

    string S, T;
    readf("%s %s\n", S, T);

    auto res = new dchar[](N*2);
    foreach (i; 0 .. N) {
        res[i*2] = S[i];
        res[i*2+1] = T[i];
    }

    res.writeln;
}