import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto disks = new int[](N + 1);
    foreach (_; 0 .. Q) {
        int l, r;
        readf("%d %d\n", l, r);

        ++disks[l - 1], --disks[r];
    }

    foreach (i; 0 .. N) {
        disks[i + 1] += disks[i];
    }

    auto res = iota(N).map!(x => disks[x] % 2 == 0 ? 0 : 1);
    writefln("%(%s%)", res);
}
