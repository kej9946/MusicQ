

  function previewImage(input, target) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        target.prop('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $(document).ready(function() {
    // 프로필사진 미리보기
    $("input[name='djpDjimgCd']").change(function() {
      var target = $(".profile-preview");
      previewImage(this, target);
    });

    // 페이지대표사진 미리보기
    $("input[name='djpImgCd']").change(function() {
      var target = $(".djp-preview");
      previewImage(this, target);
    });
  });
