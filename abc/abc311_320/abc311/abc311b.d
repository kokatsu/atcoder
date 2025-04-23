import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto V = new bool[](D);
    V[] = true;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        foreach (i, s; S) {
            V[i] &= s == 'o';
        }
    }

    auto F = V.group.filter!(v => v[0]).array;

    uint res = F.empty ? 0 : F.map!(v => v[1]).maxElement;
    res.writeln;
}
