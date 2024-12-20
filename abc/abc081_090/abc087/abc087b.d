import std;

void main() {
    int A, B, C, X;
    readf("%d\n%d\n%d\n%d\n", A, B, C, X);

    int res;
    foreach (i; 0 .. A + 1) {
        int a = i * 500;
        if (a > X) {
            break;
        }

        foreach (j; 0 .. B + 1) {
            int b = j * 100;
            if (a + b > X) {
                break;
            }

            foreach (k; 0 .. C + 1) {
                int c = k * 50;
                if (a + b + c == X) {
                    ++res;
                }

                if (a + b + c > X) {
                    break;
                }
            }
        }
    }

    res.writeln;
}
