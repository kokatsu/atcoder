import std;

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    bool[int][] D = new bool[int][](H);
    foreach (i; 0 .. H) {
        int[] A = readln.chomp.split.to!(int[]);
        D[i] = A.assocArray(true.repeat);
    }

    int[] C = new int[](H);
    foreach (_; 0 .. N) {
        int B;
        readf("%d\n", B);

        foreach (i; 0 .. H) {
            if (D[i].get(B, false)) {
                ++C[i];
            }
        }
    }

    int res = C.maxElement;
    res.writeln;
}
