import std;

struct S {
    int number;
    int win;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = new string[](2 * N);
    foreach (i; 0 .. 2 * N) {
        A[i] = readln.chomp;
    }

    int GCP(dchar a, dchar b) {
        if (a == b) {
            return 0;
        }
        else {
            if (a == 'G') {
                if (b == 'C') {
                    return 1;
                }
                else {
                    return -1;
                }
            }
            else if (a == 'C') {
                if (b == 'P') {
                    return 1;
                }
                else {
                    return -1;
                }
            }
            else {
                if (b == 'G') {
                    return 1;
                }
                else {
                    return -1;
                }
            }
        }
    }

    auto heap = BinaryHeap!(Array!S, "a.win == b.win ? a.number > b.number : a.win < b.win")();
    foreach (i; 0 .. 2 * N) {
        heap.insert(S(i, 0));
    }

    foreach (i; 0 .. M) {
        auto next = BinaryHeap!(Array!S, "a.win == b.win ? a.number > b.number : a.win < b.win")();
        foreach (j; 0 .. N) {
            S a = heap.front;
            heap.popFront;
            S b = heap.front;
            heap.popFront;

            if (GCP(A[a.number][i], A[b.number][i]) == 0) {
                next.insert(a);
                next.insert(b);
            }
            else if (GCP(A[a.number][i], A[b.number][i]) == 1) {
                next.insert(S(a.number, a.win + 1));
                next.insert(b);
            }
            else {
                next.insert(a);
                next.insert(S(b.number, b.win + 1));
            }
        }
        heap = next;
    }

    foreach (h; heap) {
        writeln(h.number + 1);
    }
}
