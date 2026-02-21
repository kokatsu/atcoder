import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] R = new int[](N);
    bool[int] D;
    foreach (ref r; R) {
        int L;
        readfln("%d", L);

        int[] X = readln.chomp.split.to!(int[]);
        foreach (x; X) {
            if (!D.get(x, false)) {
                r = x;
                D[x] = true;
                break;
            }
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
