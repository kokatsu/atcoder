import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    BinaryHeap!(Array!long, "a < b")[long] heaps;
    long[] list;
    foreach (a; A) {
        long m = a % M;

        if (!(m in heaps)) {
            auto tmp = Array!long([a]);
            heaps[m] = heapify!"a < b"(tmp);
            list ~= a;
        }
        else {
            heaps[m].insert(a);
        }
    }

    list.sort!"a > b";

    long[long] nums;
    bool[long] seen;

    long func(long x) {
        seen[x] = true;
        long m = x % M, f = heaps[m].front, s = f;
        heaps[m].popFront;

        while (!heaps[m].empty && heaps[m].front == f) {
            s += f;
            heaps[m].popFront;
        }

        long nxt = (x + 1) % M;
        if (nxt in heaps) {
            if (nxt in nums)
                s += nums[nxt];
            else {
                if (!heaps[nxt].empty)
                    s += func(nxt);
            }
        }

        nums[x] = s;
        return s;
    }

    long num;
    foreach (l; list) {
        if (l in seen)
            continue;
        num = max(num, func(l));
    }

    long res = A.sum - num;
    res.writeln;
}
