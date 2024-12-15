import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", S[i]);

    foreach_reverse (s; S)
        s.writeln;
}
