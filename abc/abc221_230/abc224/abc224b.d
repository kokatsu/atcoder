import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto A = new long[][](H);
    foreach (i; 0 .. H) {
        A[i] = readln.chomp.split.to!(long[]);
    }

    bool flag = true;
    foreach (i1; 0 .. H-1) {
        foreach (i2; i1+1 .. H) {
            foreach (j1; 0 .. W-1) {
                foreach (j2; j1+1 .. W) {
                    if (A[i1][j1] + A[i2][j2] > A[i2][j1] + A[i1][j2]) {
                        flag = false;
                    }
                }
            }
        }
    }

    if (flag) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}