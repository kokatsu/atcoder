import std;

void main() {
    long N, M, Sx, Sy;
    readf("%d %d %d %d\n", N, M, Sx, Sy);

    RedBlackTree!long[long] U, V;
    foreach (i; 0 .. N) {
        long X, Y;
        readf("%d %d\n", X, Y);

        if (Y in U) {
            U[Y].insert(X);
        }
        else {
            U[Y] = [X].redBlackTree;
        }

        if (X in V) {
            V[X].insert(Y);
        }
        else {
            V[X] = [Y].redBlackTree;
        }
    }

    long count;
    foreach (i; 0 .. M) {
        char D;
        long C;
        readf("%c %d\n", D, C);

        switch (D) {
        case 'U':
            if (Sx in V) {
                auto lb = V[Sx].lowerBound(Sy + C + 1);
                long[] rm;
                foreach_reverse (y; lb) {
                    if (y >= Sy) {
                        rm ~= y;
                        ++count;
                    }
                    else {
                        break;
                    }
                }
                foreach (y; rm) {
                    V[Sx].removeKey(y);
                    U[y].removeKey(Sx);
                }
            }
            Sy += C;
            break;
        case 'D':
            if (Sx in V) {
                auto ub = V[Sx].upperBound(Sy - C - 1);
                long[] rm;
                foreach (y; ub) {
                    if (y <= Sy) {
                        rm ~= y;
                        ++count;
                    }
                    else {
                        break;
                    }
                }
                foreach (y; rm) {
                    V[Sx].removeKey(y);
                    U[y].removeKey(Sx);
                }
            }
            Sy -= C;
            break;
        case 'L':
            if (Sy in U) {
                auto ub = U[Sy].upperBound(Sx - C - 1);
                long[] rm;
                foreach (x; ub) {
                    if (x <= Sx) {
                        rm ~= x;
                        ++count;
                    }
                    else {
                        break;
                    }
                }
                foreach (x; rm) {
                    U[Sy].removeKey(x);
                    V[x].removeKey(Sy);
                }
            }
            Sx -= C;
            break;
        case 'R':
            if (Sy in U) {
                auto lb = U[Sy].lowerBound(Sx + C + 1);
                long[] rm;
                foreach_reverse (x; lb) {
                    if (x >= Sx) {
                        rm ~= x;
                        ++count;
                    }
                    else {
                        break;
                    }
                }
                foreach (x; rm) {
                    U[Sy].removeKey(x);
                    V[x].removeKey(Sy);
                }
            }
            Sx += C;
            break;
        default:
        }
    }

    string res = format("%d %d %d", Sx, Sy, count);
    res.writeln;
}
