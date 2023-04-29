import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new dchar[][](H);
    foreach (i; 0 .. H) A[i] = readln.chomp.to!(dchar[]);

    auto B = new dchar[][](H);
    foreach (i; 0 .. H) B[i] = readln.chomp.to!(dchar[]);

    bool isOK = false;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            bool flag = true;
            foreach (k; 0 .. H) {
                foreach (l; 0 .. W) {
                    if (A[(i+k)%H][(j+l)%W] != B[k][l]) {
                        flag = false;
                    }
                }
            }

            if (flag) {
                isOK = true;
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}