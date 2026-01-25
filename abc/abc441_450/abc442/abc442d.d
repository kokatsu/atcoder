import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    int[] A = readln.chomp.split.to!(int[]);

    int[] C = new int[](N + 1);
    foreach (i, a; A) {
        C[i + 1] = C[i] + a;
    }

    int[] R;
    foreach (_; 0 .. Q) {
        int[] query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            int x = query[1] - 1;
            A.swapAt(x, x + 1);
            C[x + 1] = C[x] + A[x];
        }
        else {
            int l = query[1] - 1, r = query[2];
            R ~= C[r] - C[l];
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
