import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    int[] T = readln.chomp.split.to!(int[]);

    T[] -= 1;

    bool[] G = new bool[](N);
    G[] = true;

    foreach (t; T) {
        G[t] = !G[t];
    }

    ulong res = G.count(true);
    res.writeln;
}
