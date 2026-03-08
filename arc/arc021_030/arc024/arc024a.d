import std;

void main() {
    int L, R;
    readfln("%d %d", L, R);

    int[] l = readln.chomp.split.to!(int[]);
    int[] r = readln.chomp.split.to!(int[]);

    int[int] D;
    foreach (x; l) {
        ++D[x];
    }

    int res;
    foreach (x; r) {
        int c = D.get(x, 0);
        if (c > 0) {
            ++res;
            --D[x];
        }
    }

    res.writeln;
}
