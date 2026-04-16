import std;

void main() {
    int T;
    readfln("%d", T);

    int[] R = new int[](T);
    foreach (ref r; R) {
        int N, D;
        readfln("%d %d", N, D);

        int[] A = readln.chomp.split.to!(int[]);
        int[] B = readln.chomp.split.to!(int[]);

        int l;
        foreach (i; 0 .. N) {
            r += A[i] - B[i];
            foreach (j; l .. i + 1) {
                int m = min(A[j], B[i]);
                A[j] -= m, B[i] -= m;

                if (A[j] == 0) {
                    ++l;
                }

                if (B[i] == 0) {
                    break;
                }
            }

            if (i >= D && A[i - D] > 0) {
                r -= A[i - D];
                l = max(l, i - D + 1);
            }
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
