// 블루레이 만들기
#include <iostream>
#include <vector>
#include <algorithm>
#include <deque>
#include <stack>
#include <queue>
#include <string>

using namespace std;

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);

    int N, M;
    cin >> N >> M;
    vector<int> A(N);
    int start = 0;
    int end = 0;

    for (int i = 0; i < N; i++) {
        cin >> A[i];
        if (start < A[i]) {
            start = A[i];
        }
        end = end + A[i];
    }

    while (start <= end) {
        int middle = (start +end) /2;
        int sum = 0;
        int count = 0;

        //
        for (int i = 0; i< N; i++) {
            if (sum + A[i] > middle) {
                count ++;
                sum = 0;
            }
            sum = sum + A[i];
            }
            if (sum != 0) {
            count++;
            }
            if (count > M) {
            start = middle + 1;
            }
            else {
            end = middle - 1;
        }
    }
    cout << start << "\n";
}