import std;

void main() {
    long H, W, rs, cs, N;
    readf("%d %d %d %d\n%d\n", H, W, rs, cs, N);

    RedBlackTree!long[long] X, Y;
    foreach (i; 0 .. N) {
        long r, c;
        readf("%d %d\n", r, c);

        if (c in X) {
            X[c].insert(r);
        }
        else {
            X[c] = [r].redBlackTree;
        }

        if (r in Y) {
            Y[r].insert(c);
        }
        else {
            Y[r] = [c].redBlackTree;
        }
    }

    long Q;
    readf("%d\n", Q);

    auto d = new dchar[](Q);
    auto l = new long[](Q);
    foreach (i; 0 .. Q) {
        readf("%c %d\n", d[i], l[i]);
    }

    long r = rs, c = cs;
    foreach (i; 0 .. Q) {
        switch (d[i]) {
        case 'L':
            if (r in Y) {
                auto lb = Y[r].lowerBound(c);
                if (lb.empty) {
                    c = max(1, c - l[i]);
                }
                else {
                    c = max(lb.back + 1, c - l[i]);
                }
            }
            else {
                c = max(1, c - l[i]);
            }
            break;
        case 'R':
            if (r in Y) {
                auto ub = Y[r].upperBound(c);
                if (ub.empty) {
                    c = min(W, c + l[i]);
                }
                else {
                    c = min(ub.front - 1, c + l[i]);
                }
            }
            else {
                c = min(W, c + l[i]);
            }
            break;
        case 'U':
            if (c in X) {
                auto lb = X[c].lowerBound(r);
                if (lb.empty) {
                    r = max(1, r - l[i]);
                }
                else {
                    r = max(lb.back + 1, r - l[i]);
                }
            }
            else {
                r = max(1, r - l[i]);
            }
            break;
        case 'D':
            if (c in X) {
                auto ub = X[c].upperBound(r);
                if (ub.empty) {
                    r = min(H, r + l[i]);
                }
                else {
                    r = min(ub.front - 1, r + l[i]);
                }
            }
            else {
                r = min(H, r + l[i]);
            }
            break;
        default:
        }

        writeln(r, " ", c);
    }
}
