import std;

void main() {
    long N;
    readf("%d\n", N);

    auto X = new long[](N), Y = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", X[i], Y[i]);

    auto S = readln.chomp;

    bool isOK;
    RedBlackTree!(long, "a < b")[long] L, R;
    foreach (i, s; S) {
        if (s == 'L') {
            if (Y[i] in R) {
                auto lb = R[Y[i]].lowerBound(X[i]);
                if (!lb.empty) {
                    isOK = true;
                    break;
                }
            }

            if (Y[i] in L)
                L[Y[i]].insert(X[i]);
            else
                L[Y[i]] = [X[i]].redBlackTree;
        }
        else {
            if (Y[i] in L) {
                auto ub = L[Y[i]].upperBound(X[i]);
                if (!ub.empty) {
                    isOK = true;
                    break;
                }
            }

            if (Y[i] in R)
                R[Y[i]].insert(X[i]);
            else
                R[Y[i]] = [X[i]].redBlackTree;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
