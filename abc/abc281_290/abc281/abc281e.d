import std;

struct Number {
    long num, idx;
}

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto A = readln.chomp.split.to!(long[]);

    auto rbt1 = new RedBlackTree!(Number, "a.num == b.num ? a.idx < b.idx : a.num < b.num", true)();
    auto rbt2 = new RedBlackTree!(Number, "a.num == b.num ? a.idx < b.idx : a.num < b.num", true)();

    auto nums = new long[](N);

    auto res = new long[](N-M+1);
    long S;
    foreach (i, a; A) {
        if (rbt1.length < K) {
            S += a;
            rbt1.insert(Number(a, i.to!long));
            nums[i] = 1;
        }
        else{
            auto b = rbt1.back;
            if (b.num > a) {
                S += a - b.num;
                rbt1.removeBack;
                rbt1.insert(Number(a, i.to!long));
                rbt2.insert(b);
                nums[b.idx] = 2, nums[i] = 1;
            }
            else {
                rbt2.insert(Number(a, i.to!long));
                nums[i] = 2;
            }
        }

        if (i >= M - 1) {
            res[i-M+1] = S;

            if (nums[i-M+1] == 1) {
                rbt1.removeKey(Number(A[i-M+1], i-M+1));
                S -= A[i-M+1];
                if (rbt2.empty) continue;

                auto f = rbt2.front;
                S += f.num;
                nums[f.idx] = 1;
                rbt2.removeFront;
                rbt1.insert(f);
            }
            else {
                rbt2.removeKey(Number(A[i-M+1], i-M+1));
            }
        }
    }

    writefln("%(%s %)", res);
}