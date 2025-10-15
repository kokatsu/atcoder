import std;

void main() {
    int R, G, B;
    string C;
    readf("%d %d %d\n%s\n", R, G, B, C);

    int[] A = [R, G, B];
    foreach (i, c; ["Red", "Green", "Blue"]) {
        if (c != C) {
            continue;
        }

        A[i] = 100;
    }

    int res = A.minElement;
    res.writeln;
}
